  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovq %xmm10, %xmm13                            #  2     0x5   5      OPC=vmovq_xmm_xmm            
  vhaddpd %xmm11, %xmm9, %xmm6                    #  3     0xa   5      OPC=vhaddpd_xmm_xmm_xmm      
  pxor %xmm2, %xmm8                               #  4     0xf   5      OPC=pxor_xmm_xmm             
  movlhps %xmm13, %xmm8                           #  5     0x14  4      OPC=movlhps_xmm_xmm          
  vphaddd %xmm8, %xmm6, %xmm0                     #  6     0x18  5      OPC=vphaddd_xmm_xmm_xmm      
  vpunpckhqdq %xmm13, %xmm9, %xmm15               #  7     0x1d  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpaddd %xmm0, %xmm15, %xmm1                     #  8     0x22  4      OPC=vpaddd_xmm_xmm_xmm       
  retq                                            #  9     0x26  1      OPC=retq                     
                                                                                                     
.size target, .-target
