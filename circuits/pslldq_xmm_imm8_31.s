  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  callq .move_64_128_xmm10_xmm11_xmm1             #  2     0x5   5      OPC=callq_label          
  vmovupd %xmm9, %xmm12                           #  3     0xa   5      OPC=vmovupd_xmm_xmm      
  vandnps %xmm9, %xmm12, %xmm15                   #  4     0xf   5      OPC=vandnps_xmm_xmm_xmm  
  vmovsd %xmm15, %xmm1, %xmm4                     #  5     0x14  5      OPC=vmovsd_xmm_xmm_xmm   
  movddup %xmm4, %xmm1                            #  6     0x19  4      OPC=movddup_xmm_xmm      
  retq                                            #  7     0x1d  1      OPC=retq                 
                                                                                                 
.size target, .-target
