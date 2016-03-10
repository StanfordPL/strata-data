  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxbq %xmm1, %ymm1  #  1     0    5      OPC=vpmovzxbq_ymm_xmm  
  movd %xmm1, %ebx        #  2     0x5  4      OPC=movd_r32_xmm       
  subb %bh, %bh           #  3     0x9  2      OPC=subb_rh_rh         
  retq                    #  4     0xb  1      OPC=retq               
                                                                      
.size target, .-target
