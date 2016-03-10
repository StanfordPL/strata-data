  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm10, %xmm11, %xmm8      #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm  
  movq %xmm8, %xmm1                    #  3     0xa   5      OPC=movq_xmm_xmm           
  andps %xmm1, %xmm1                   #  4     0xf   3      OPC=andps_xmm_xmm          
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
