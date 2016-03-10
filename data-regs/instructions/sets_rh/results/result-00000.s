  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .read_sf_into_rcx          #  1     0     5      OPC=callq_label   
  callq .move_064_032_rcx_r8d_r9d  #  2     0x5   5      OPC=callq_label   
  shll $0x1, %r9d                  #  3     0xa   3      OPC=shll_r32_one  
  shlq %cl, %rcx                   #  4     0xd   3      OPC=shlq_r64_cl   
  setnz %ah                        #  5     0x10  3      OPC=setnz_rh      
  retq                             #  6     0x13  1      OPC=retq          
                                                                           
.size target, .-target
