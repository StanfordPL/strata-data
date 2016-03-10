  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  movaps %xmm3, %xmm13               #  1     0     4      OPC=movaps_xmm_xmm           
  callq .move_128_064_xmm2_r12_r13   #  2     0x4   5      OPC=callq_label              
  vmovq %r13, %xmm1                  #  3     0x9   5      OPC=vmovq_xmm_r64            
  vpunpcklqdq %xmm13, %xmm3, %xmm12  #  4     0xe   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movlhps %xmm12, %xmm1              #  5     0x13  4      OPC=movlhps_xmm_xmm          
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
