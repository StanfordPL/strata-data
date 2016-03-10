  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vrsqrtss %xmm1, %xmm2, %xmm10        #  1     0     4      OPC=vrsqrtss_xmm_xmm_xmm     
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  callq .move_128_64_xmm2_xmm8_xmm9    #  3     0x9   5      OPC=callq_label              
  vfmadd213ps %xmm13, %xmm1, %xmm10    #  4     0xe   5      OPC=vfmadd213ps_xmm_xmm_xmm  
  addsubps %xmm8, %xmm10               #  5     0x13  5      OPC=addsubps_xmm_xmm         
  vpunpckhdq %xmm10, %xmm13, %xmm0     #  6     0x18  5      OPC=vpunpckhdq_xmm_xmm_xmm   
  movdqu %xmm0, %xmm1                  #  7     0x1d  4      OPC=movdqu_xmm_xmm           
  movhlps %xmm1, %xmm1                 #  8     0x21  3      OPC=movhlps_xmm_xmm          
  retq                                 #  9     0x24  1      OPC=retq                     
                                                                                          
.size target, .-target
