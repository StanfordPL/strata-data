  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm4, %xmm2, %xmm7                 #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovdqu %xmm7, %xmm10                         #  3     0x9   4      OPC=vmovdqu_xmm_xmm        
  vmovq %rbx, %xmm2                             #  4     0xd   5      OPC=vmovq_xmm_r64          
  vunpcklpd %xmm10, %xmm2, %xmm1                #  5     0x12  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                          #  6     0x17  1      OPC=retq                   
                                                                                                 
.size target, .-target
