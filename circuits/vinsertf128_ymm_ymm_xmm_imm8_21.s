  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vsqrtpd %xmm3, %xmm8                #  1     0     4      OPC=vsqrtpd_xmm_xmm     
  vmovupd %xmm3, %xmm9                #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0x8   5      OPC=callq_label         
  vminpd %xmm2, %xmm2, %xmm12         #  4     0xd   4      OPC=vminpd_xmm_xmm_xmm  
  movaps %xmm12, %xmm1                #  5     0x11  4      OPC=movaps_xmm_xmm      
  retq                                #  6     0x15  1      OPC=retq                
                                                                                    
.size target, .-target
