  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  callq .read_sf_into_rcx          #  1     0     5      OPC=callq_label    
  callq .move_032_016_ecx_r8w_r9w  #  2     0x5   5      OPC=callq_label    
  callq .move_016_032_r8w_r9w_edx  #  3     0xa   5      OPC=callq_label    
  xaddl %edx, %ecx                 #  4     0xf   3      OPC=xaddl_r32_r32  
  setne %ah                        #  5     0x12  3      OPC=setne_rh       
  retq                             #  6     0x15  1      OPC=retq           
                                                                            
.size target, .-target
