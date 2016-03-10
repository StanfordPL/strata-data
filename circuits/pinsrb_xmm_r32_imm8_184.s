  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  andnl %ebx, %ebx, %edx             #  1     0     5      OPC=andnl_r32_r32_r32  
  callq .move_064_032_rdx_r8d_r9d    #  2     0x5   5      OPC=callq_label        
  xaddw %r9w, %bx                    #  3     0xa   5      OPC=xaddw_r16_r16      
  callq .move_r9b_to_byte_8_of_ymm1  #  4     0xf   5      OPC=callq_label        
  retq                               #  5     0x14  1      OPC=retq               
                                                                                  
.size target, .-target
