  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm8_xmm9    #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  vmulsd %xmm11, %xmm9, %xmm2          #  3     0xa   5      OPC=vmulsd_xmm_xmm_xmm  
  punpckhqdq %xmm10, %xmm1             #  4     0xf   5      OPC=punpckhqdq_xmm_xmm  
  pandn %xmm9, %xmm1                   #  5     0x14  5      OPC=pandn_xmm_xmm       
  addpd %xmm2, %xmm1                   #  6     0x19  4      OPC=addpd_xmm_xmm       
  retq                                 #  7     0x1d  1      OPC=retq                
                                                                                     
.size target, .-target
