  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovzxbq %xmm1, %ymm0  #  1     0     5      OPC=vpmovzxbq_ymm_xmm  
  movsd %xmm0, %xmm1      #  2     0x5   4      OPC=movsd_xmm_xmm      
  andnpd %xmm0, %xmm1     #  3     0x9   4      OPC=andnpd_xmm_xmm     
  movlhps %xmm1, %xmm1    #  4     0xd   3      OPC=movlhps_xmm_xmm    
  retq                    #  5     0x10  1      OPC=retq               
                                                                       
.size target, .-target
