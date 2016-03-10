  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm1, %xmm1, %xmm11  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vbroadcastsd %xmm11, %ymm3        #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm     
  vpandn %xmm3, %xmm11, %xmm8       #  3     0x9   4      OPC=vpandn_xmm_xmm_xmm       
  movapd %xmm8, %xmm1               #  4     0xd   5      OPC=movapd_xmm_xmm           
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
