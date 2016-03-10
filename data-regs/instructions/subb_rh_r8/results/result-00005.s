  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x2, %rcx  #  1     0    10     OPC=movq_r64_imm64  
  xaddb %ch, %cl   #  2     0xa  3      OPC=xaddb_r8_rh     
  sbbb %bl, %ah    #  3     0xd  2      OPC=sbbb_rh_r8      
  retq             #  4     0xf  1      OPC=retq            
                                                            
.size target, .-target
