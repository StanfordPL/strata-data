  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vsubsd %xmm1, %xmm1, %xmm7          #  1     0     4      OPC=vsubsd_xmm_xmm_xmm  
  orps %xmm7, %xmm1                   #  2     0x4   3      OPC=orps_xmm_xmm        
  callq .move_byte_15_of_ymm1_to_r9b  #  3     0x7   5      OPC=callq_label         
  movzbq %r9b, %rbx                   #  4     0xc   4      OPC=movzbq_r64_r8       
  retq                                #  5     0x10  1      OPC=retq                
                                                                                    
.size target, .-target
