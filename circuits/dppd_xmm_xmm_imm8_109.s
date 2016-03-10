  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmulpd %xmm2, %xmm1, %xmm6                      #  1     0     4      OPC=vmulpd_xmm_xmm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vaddpd %xmm8, %xmm6, %xmm11                     #  3     0x9   5      OPC=vaddpd_xmm_xmm_xmm     
  vunpckhpd %xmm6, %xmm10, %xmm15                 #  4     0xe   4      OPC=vunpckhpd_xmm_xmm_xmm  
  unpckhpd %xmm15, %xmm11                         #  5     0x12  5      OPC=unpckhpd_xmm_xmm       
  movq %xmm11, %xmm1                              #  6     0x17  5      OPC=movq_xmm_xmm           
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
