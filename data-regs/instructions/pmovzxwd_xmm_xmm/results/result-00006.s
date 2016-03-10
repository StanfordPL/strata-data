  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpmovzxwd %xmm2, %xmm5      #  1     0    5      OPC=vpmovzxwd_xmm_xmm   
  vminps %ymm5, %ymm5, %ymm0  #  2     0x5  4      OPC=vminps_ymm_ymm_ymm  
  movaps %xmm0, %xmm1         #  3     0x9  3      OPC=movaps_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
