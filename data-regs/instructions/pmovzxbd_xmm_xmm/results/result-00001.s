  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovzxbd %xmm2, %ymm12  #  1     0    5      OPC=vpmovzxbd_ymm_xmm  
  movaps %xmm12, %xmm1     #  2     0x5  4      OPC=movaps_xmm_xmm     
  retq                     #  3     0x9  1      OPC=retq               
                                                                       
.size target, .-target
