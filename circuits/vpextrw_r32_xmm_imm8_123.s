  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label        
  callq .move_032_016_edx_r8w_r9w           #  2     0x5   5      OPC=callq_label        
  andnl %eax, %eax, %ebx                    #  3     0xa   5      OPC=andnl_r32_r32_r32  
  xchgw %bx, %r9w                           #  4     0xf   4      OPC=xchgw_r16_r16      
  retq                                      #  5     0x13  1      OPC=retq               
                                                                                         
.size target, .-target
