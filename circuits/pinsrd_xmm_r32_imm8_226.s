  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovd %ebx, %xmm11                            #  1     0     4      OPC=vmovd_xmm_r32       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  unpcklps %xmm7, %xmm11                        #  3     0x9   4      OPC=unpcklps_xmm_xmm    
  punpcklqdq %xmm11, %xmm1                      #  4     0xd   5      OPC=punpcklqdq_xmm_xmm  
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
