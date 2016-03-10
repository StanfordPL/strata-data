  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxwq %xmm2, %xmm6  #  1     0    5      OPC=vpmovzxwq_xmm_xmm  
  andnps %xmm6, %xmm6     #  2     0x5  3      OPC=andnps_xmm_xmm     
  pmovzxbd %xmm6, %xmm1   #  3     0x8  5      OPC=pmovzxbd_xmm_xmm   
  retq                    #  4     0xd  1      OPC=retq               
                                                                      
.size target, .-target
