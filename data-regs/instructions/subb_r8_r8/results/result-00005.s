  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x2, %rdx  #  1     0    10     OPC=movq_r64_imm64  
  xaddb %cl, %dh   #  2     0xa  3      OPC=xaddb_rh_r8     
  subb %dh, %bl    #  3     0xd  2      OPC=subb_r8_rh      
  retq             #  4     0xf  1      OPC=retq            
                                                            
.size target, .-target
