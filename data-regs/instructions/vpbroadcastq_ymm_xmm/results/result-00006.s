  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label        
  vzeroall                              #  2     0x5   3      OPC=vzeroall           
  vmovq %r8, %xmm9                      #  3     0x8   5      OPC=vmovq_xmm_r64      
  vmovddup %xmm9, %xmm10                #  4     0xd   5      OPC=vmovddup_xmm_xmm   
  vmovddup %xmm9, %xmm4                 #  5     0x12  5      OPC=vmovddup_xmm_xmm   
  vpxor %xmm4, %xmm6, %xmm11            #  6     0x17  4      OPC=vpxor_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  7     0x1b  5      OPC=callq_label        
  retq                                  #  8     0x20  1      OPC=retq               
                                                                                     
.size target, .-target
