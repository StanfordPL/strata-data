  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm3  #  1     0    5      OPC=vpmovzxwd_ymm_xmm  
  movd %xmm3, %ebx        #  2     0x5  4      OPC=movd_r32_xmm       
  retq                    #  3     0x9  1      OPC=retq               
                                                                      
.size target, .-target
