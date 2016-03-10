  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  movswq %ax, %rdx                          #  1     0     4      OPC=movswq_r64_r16      
  vmovq %rdx, %xmm13                        #  2     0x4   5      OPC=vmovq_xmm_r64       
  vaddps %ymm13, %ymm13, %ymm1              #  3     0x9   5      OPC=vaddps_ymm_ymm_ymm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xe   5      OPC=callq_label         
  retq                                      #  5     0x13  1      OPC=retq                
                                                                                          
.size target, .-target
