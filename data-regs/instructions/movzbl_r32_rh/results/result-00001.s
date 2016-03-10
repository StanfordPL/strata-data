  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .set_pf                     #  1     0     5      OPC=callq_label    
  callq .read_pf_into_rbx           #  2     0x5   5      OPC=callq_label    
  xchgl %ebx, %ebx                  #  3     0xa   2      OPC=xchgl_r32_r32  
  movzbw %ah, %bx                   #  4     0xc   4      OPC=movzbw_r16_rh  
  callq .move_032_016_ebx_r8w_r9w   #  5     0x10  5      OPC=callq_label    
  callq .move_r9b_to_byte_2_of_rbx  #  6     0x15  5      OPC=callq_label    
  retq                              #  7     0x1a  1      OPC=retq           
                                                                             
.size target, .-target
