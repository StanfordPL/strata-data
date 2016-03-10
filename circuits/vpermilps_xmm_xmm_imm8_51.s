  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label         
  vmovd %r9d, %xmm1                         #  2     0x5   5      OPC=vmovd_xmm_r32       
  punpckldq %xmm2, %xmm1                    #  3     0xa   4      OPC=punpckldq_xmm_xmm   
  punpcklqdq %xmm1, %xmm1                   #  4     0xe   4      OPC=punpcklqdq_xmm_xmm  
  retq                                      #  5     0x12  1      OPC=retq                
                                                                                          
.size target, .-target
