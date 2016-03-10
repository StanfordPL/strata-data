  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm13          #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  pmovzxbd %xmm13, %xmm13              #  2     0x4   6      OPC=pmovzxbd_xmm_xmm    
  vminsd %xmm13, %xmm13, %xmm12        #  3     0xa   5      OPC=vminsd_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xf   5      OPC=callq_label         
  retq                                 #  5     0x14  1      OPC=retq                
                                                                                     
.size target, .-target
