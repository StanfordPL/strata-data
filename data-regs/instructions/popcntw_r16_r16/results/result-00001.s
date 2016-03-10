  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .write_cl_to_sf    #  1     0     5      OPC=callq_label      
  callq .read_sf_into_rbx  #  2     0x5   5      OPC=callq_label      
  xchgw %bx, %cx           #  3     0xa   3      OPC=xchgw_r16_r16    
  popcntq %rbx, %rsp       #  4     0xd   5      OPC=popcntq_r64_r64  
  movq %rsp, %rbx          #  5     0x12  3      OPC=movq_r64_r64     
  retq                     #  6     0x15  1      OPC=retq             
                                                                      
.size target, .-target
