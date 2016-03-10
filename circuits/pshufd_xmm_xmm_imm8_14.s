  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm2, %xmm12         #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  movupd %xmm12, %xmm1               #  3     0xa   5      OPC=movupd_xmm_xmm        
  vmovaps %xmm9, %xmm3               #  4     0xf   5      OPC=vmovaps_xmm_xmm       
  movsd %xmm3, %xmm1                 #  5     0x14  4      OPC=movsd_xmm_xmm         
  retq                               #  6     0x18  1      OPC=retq                  
                                                                                     
.size target, .-target
