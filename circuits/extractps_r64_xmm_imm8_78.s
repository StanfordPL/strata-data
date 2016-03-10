  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vmovupd %xmm13, %xmm0                #  2     0x5   5      OPC=vmovupd_xmm_xmm     
  vmovss %xmm0, %xmm12, %xmm0          #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm  
  vmovd %xmm0, %ebx                    #  4     0xe   4      OPC=vmovd_r32_xmm       
  retq                                 #  5     0x12  1      OPC=retq                
                                                                                     
.size target, .-target
