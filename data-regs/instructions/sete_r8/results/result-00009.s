  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .read_zf_into_rcx           #  1     0     5      OPC=callq_label    
  rolw $0x1, %cx                    #  2     0x5   3      OPC=rolw_r16_one   
  movzbq %cl, %rcx                  #  3     0x8   4      OPC=movzbq_r64_r8  
  callq .move_064_032_rcx_r8d_r9d   #  4     0xc   5      OPC=callq_label    
  callq .read_zf_into_rbx           #  5     0x11  5      OPC=callq_label    
  callq .move_r8b_to_byte_7_of_rbx  #  6     0x16  5      OPC=callq_label    
  retq                              #  7     0x1b  1      OPC=retq           
                                                                             
.size target, .-target
