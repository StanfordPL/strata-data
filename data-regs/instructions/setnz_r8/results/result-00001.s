  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x3, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  setnz %bh        #  2     0xa   3      OPC=setnz_rh        
  xchgw %bx, %bx   #  3     0xd   3      OPC=xchgw_r16_r16   
  xchgb %bh, %bl   #  4     0x10  2      OPC=xchgb_r8_rh     
  retq             #  5     0x12  1      OPC=retq            
                                                             
.size target, .-target
