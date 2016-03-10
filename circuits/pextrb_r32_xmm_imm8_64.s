  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxbd %xmm1, %ymm2  #  1     0    5      OPC=vpmovzxbd_ymm_xmm  
  movd %xmm2, %ebx        #  2     0x5  4      OPC=movd_r32_xmm       
  rolb $0x1, %bh          #  3     0x9  2      OPC=rolb_rh_one        
  retq                    #  4     0xb  1      OPC=retq               
                                                                      
.size target, .-target
