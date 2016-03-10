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
  callq .move_016_032_r8w_r9w_ecx  #  3     0xa   5      OPC=callq_label    
  xaddw %cx, %cx                   #  4     0xf   4      OPC=xaddw_r16_r16  
  setne %ah                        #  5     0x13  3      OPC=setne_rh       
  retq                             #  6     0x16  1      OPC=retq           
                                                                            
.size target, .-target
