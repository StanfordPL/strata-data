  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP  Bytes  Opcode                  
.target:                    #        0    0      OPC=<label>             
  vmovdqu %xmm2, %xmm14     #  1     0    4      OPC=vmovdqu_xmm_xmm     
  punpckhqdq %xmm2, %xmm14  #  2     0x4  5      OPC=punpckhqdq_xmm_xmm  
  movlhps %xmm14, %xmm1     #  3     0x9  4      OPC=movlhps_xmm_xmm     
  retq                      #  4     0xd  1      OPC=retq                
                                                                         
.size target, .-target
