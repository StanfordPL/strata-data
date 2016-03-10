  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  callq .read_zf_into_rbx          #  1     0     5      OPC=callq_label    
  callq .move_064_032_rbx_r8d_r9d  #  2     0x5   5      OPC=callq_label    
  movzbw %r9b, %di                 #  3     0xa   5      OPC=movzbw_r16_r8  
  xorw %di, %bx                    #  4     0xf   3      OPC=xorw_r16_r16   
  retq                             #  5     0x12  1      OPC=retq           
                                                                            
.size target, .-target
