  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  movupd %xmm2, %xmm3                       #  1     0     4      OPC=movupd_xmm_xmm      
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label         
  vmovd %r9d, %xmm1                         #  3     0x9   5      OPC=vmovd_xmm_r32       
  vsubsd %xmm1, %xmm3, %xmm1                #  4     0xe   4      OPC=vsubsd_xmm_xmm_xmm  
  punpckhqdq %xmm3, %xmm1                   #  5     0x12  4      OPC=punpckhqdq_xmm_xmm  
  retq                                      #  6     0x16  1      OPC=retq                
                                                                                          
.size target, .-target
