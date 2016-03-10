  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  movd %ebx, %xmm10                    #  2     0x5   5      OPC=movd_xmm_r32        
  vmovss %xmm10, %xmm13, %xmm14        #  3     0xa   5      OPC=vmovss_xmm_xmm_xmm  
  movlhps %xmm14, %xmm1                #  4     0xf   4      OPC=movlhps_xmm_xmm     
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
