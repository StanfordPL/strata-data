  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode           
.target:                           #        0     0      OPC=<label>      
  callq .read_zf_into_rbx          #  1     0     5      OPC=callq_label  
  callq .move_032_016_ebx_r8w_r9w  #  2     0x5   5      OPC=callq_label  
  decw %r8w                        #  3     0xa   4      OPC=decw_r16     
  callq .move_016_032_r8w_r9w_ecx  #  4     0xe   5      OPC=callq_label  
  shlb $0x1, %cl                   #  5     0x13  2      OPC=shlb_r8_one  
  setnae %ah                       #  6     0x15  3      OPC=setnae_rh    
  retq                             #  7     0x18  1      OPC=retq         
                                                                          
.size target, .-target
