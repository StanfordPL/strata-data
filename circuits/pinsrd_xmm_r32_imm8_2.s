  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vmovd %ebx, %xmm2                               #  1     0     4      OPC=vmovd_xmm_r32      
  vmovups %xmm2, %xmm13                           #  2     0x4   4      OPC=vmovups_xmm_xmm    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label        
  punpckldq %xmm11, %xmm13                        #  4     0xd   5      OPC=punpckldq_xmm_xmm  
  unpcklpd %xmm13, %xmm1                          #  5     0x12  5      OPC=unpcklpd_xmm_xmm   
  retq                                            #  6     0x17  1      OPC=retq               
                                                                                               
.size target, .-target
