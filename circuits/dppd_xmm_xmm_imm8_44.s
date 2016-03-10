  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vcvtss2sd %xmm2, %xmm1, %xmm5  #  1     0     4      OPC=vcvtss2sd_xmm_xmm_xmm  
  vcvttpd2dq %ymm5, %xmm12       #  2     0x4   4      OPC=vcvttpd2dq_xmm_ymm     
  movsldup %xmm12, %xmm1         #  3     0x8   5      OPC=movsldup_xmm_xmm       
  punpckhqdq %xmm1, %xmm1        #  4     0xd   4      OPC=punpckhqdq_xmm_xmm     
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
