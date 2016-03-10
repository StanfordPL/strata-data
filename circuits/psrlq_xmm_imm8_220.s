  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  pxor %xmm6, %xmm6        #  1     0    4      OPC=pxor_xmm_xmm        
  movlhps %xmm6, %xmm1     #  2     0x4  3      OPC=movlhps_xmm_xmm     
  punpckhqdq %xmm1, %xmm1  #  3     0x7  4      OPC=punpckhqdq_xmm_xmm  
  retq                     #  4     0xb  1      OPC=retq                
                                                                        
.size target, .-target
