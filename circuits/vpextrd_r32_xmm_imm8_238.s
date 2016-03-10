  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vorps %xmm13, %xmm13, %xmm7          #  2     0x5   5      OPC=vorps_xmm_xmm_xmm     
  vbroadcastss %xmm7, %xmm9            #  3     0xa   5      OPC=vbroadcastss_xmm_xmm  
  movd %xmm9, %ebx                     #  4     0xf   5      OPC=movd_r32_xmm          
  retq                                 #  5     0x14  1      OPC=retq                  
                                                                                       
.size target, .-target
