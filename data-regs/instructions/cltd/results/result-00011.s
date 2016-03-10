  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  negb %ah          #  1     0     2      OPC=negb_rh         
  roll $0x1, %eax   #  2     0x2   2      OPC=roll_r32_one    
  movq $0x20, %rdx  #  3     0x4   10     OPC=movq_r64_imm64  
  movswq %ax, %rbp  #  4     0xe   4      OPC=movswq_r64_r16  
  sbbw %bp, %ax     #  5     0x12  3      OPC=sbbw_r16_r16    
  cwtl              #  6     0x15  1      OPC=cwtl            
  xchgl %edx, %eax  #  7     0x16  1      OPC=xchgl_eax_r32   
  retq              #  8     0x17  1      OPC=retq            
                                                              
.size target, .-target
