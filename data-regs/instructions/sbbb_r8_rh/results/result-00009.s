  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x10, %rdx  #  1     0     10     OPC=movq_r64_imm64  
  xchgb %bl, %dh    #  2     0xa   2      OPC=xchgb_rh_r8     
  sbbb %ah, %dh     #  3     0xc   2      OPC=sbbb_rh_rh      
  xchgb %dh, %bl    #  4     0xe   2      OPC=xchgb_r8_rh     
  retq              #  5     0x10  1      OPC=retq            
                                                              
.size target, .-target
