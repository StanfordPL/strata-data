  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .read_zf_into_rcx           #  1     0     5      OPC=callq_label   
  setna %ch                         #  2     0x5   3      OPC=setna_rh      
  xchgb %cl, %ch                    #  3     0x8   2      OPC=xchgb_rh_r8   
  callq .move_064_032_rcx_r8d_r9d   #  4     0xa   5      OPC=callq_label   
  movl %ecx, %ebx                   #  5     0xf   2      OPC=movl_r32_r32  
  callq .move_r8b_to_byte_4_of_rbx  #  6     0x11  5      OPC=callq_label   
  retq                              #  7     0x16  1      OPC=retq          
                                                                            
.size target, .-target
