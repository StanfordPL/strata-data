  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovsd %xmm11, %xmm3, %xmm6          #  2     0x5   5      OPC=vmovsd_xmm_xmm_xmm     
  vunpcklpd %xmm3, %xmm10, %xmm1       #  3     0xa   4      OPC=vunpcklpd_xmm_xmm_xmm  
  subpd %xmm6, %xmm1                   #  4     0xe   4      OPC=subpd_xmm_xmm          
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
