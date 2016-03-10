  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movq $0x80, %rax    #  1     0     10     OPC=movq_r64_imm64  
  movsbq %al, %r13    #  2     0xa   4      OPC=movsbq_r64_r8   
  movswq %r13w, %rax  #  3     0xe   4      OPC=movswq_r64_r16  
  xorb %al, %r13b     #  4     0x12  3      OPC=xorb_r8_r8      
  movslq %eax, %rcx   #  5     0x15  3      OPC=movslq_r64_r32  
  xorb %ch, %bl       #  6     0x18  2      OPC=xorb_r8_rh      
  xorq %r13, %rbx     #  7     0x1a  3      OPC=xorq_r64_r64    
  retq                #  8     0x1d  1      OPC=retq            
                                                                
.size target, .-target
