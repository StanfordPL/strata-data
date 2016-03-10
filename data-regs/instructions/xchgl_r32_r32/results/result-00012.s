  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_032_016_ecx_r10w_r11w  #  1     0     5      OPC=callq_label  
  callq .move_032_016_ebx_r8w_r9w    #  2     0x5   5      OPC=callq_label  
  callq .clear_zf                    #  3     0xa   5      OPC=callq_label  
  callq .read_zf_into_rcx            #  4     0xf   5      OPC=callq_label  
  callq .move_016_032_r8w_r9w_ecx    #  5     0x14  5      OPC=callq_label  
  callq .read_zf_into_rbx            #  6     0x19  5      OPC=callq_label  
  callq .move_016_032_r10w_r11w_ebx  #  7     0x1e  5      OPC=callq_label  
  retq                               #  8     0x23  1      OPC=retq         
                                                                            
.size target, .-target
