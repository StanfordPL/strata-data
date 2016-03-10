  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %xmm11     #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  vpmovsxwd %xmm11, %ymm9        #  2     0x5   5      OPC=vpmovsxwd_ymm_xmm     
  vxorps %xmm9, %xmm1, %xmm11    #  3     0xa   5      OPC=vxorps_xmm_xmm_xmm    
  vpandn %ymm11, %ymm11, %ymm10  #  4     0xf   5      OPC=vpandn_ymm_ymm_ymm    
  pmovzxbd %xmm10, %xmm1         #  5     0x14  6      OPC=pmovzxbd_xmm_xmm      
  retq                           #  6     0x1a  1      OPC=retq                  
                                                                                 
.size target, .-target
