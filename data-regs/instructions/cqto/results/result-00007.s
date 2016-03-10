  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  shlq $0x1, %rax     #  1     0     3      OPC=shlq_r64_one    
  setz %spl           #  2     0x3   3      OPC=setz_r8         
  movsbq %spl, %rax   #  3     0x6   4      OPC=movsbq_r64_r8   
  movzbq %spl, %r12   #  4     0xa   4      OPC=movzbq_r64_r8   
  sbbw %ax, %r12w     #  5     0xe   4      OPC=sbbw_r16_r16    
  movswq %r12w, %rdx  #  6     0x12  4      OPC=movswq_r64_r16  
  movb %dl, %dl       #  7     0x16  2      OPC=movb_r8_r8      
  retq                #  8     0x18  1      OPC=retq            
                                                                
.size target, .-target
