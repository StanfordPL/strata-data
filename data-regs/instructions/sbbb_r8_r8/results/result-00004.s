  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x3, %rdx  #  1     0    10     OPC=movq_r64_imm64  
  xchgb %dh, %cl   #  2     0xa  2      OPC=xchgb_r8_rh     
  sbbb %dh, %bl    #  3     0xc  2      OPC=sbbb_r8_rh      
  retq             #  4     0xe  1      OPC=retq            
                                                            
.size target, .-target
