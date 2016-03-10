  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  setl %ch         #  1     0     3      OPC=setl_rh         
  movq $0x0, %rbx  #  2     0x3   10     OPC=movq_r64_imm64  
  xchgw %bx, %bx   #  3     0xd   3      OPC=xchgw_r16_r16   
  incw %bx         #  4     0x10  3      OPC=incw_r16        
  xchgb %bl, %ch   #  5     0x13  2      OPC=xchgb_rh_r8     
  retq             #  6     0x15  1      OPC=retq            
                                                             
.size target, .-target
