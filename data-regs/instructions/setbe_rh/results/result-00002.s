  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .read_zf_into_rbx            #  1     0     5      OPC=callq_label      
  adcl %ebx, %ebx                    #  2     0x5   2      OPC=adcl_r32_r32     
  callq .move_064_032_rbx_r12d_r13d  #  3     0x7   5      OPC=callq_label      
  popcntw %r12w, %r10w               #  4     0xc   6      OPC=popcntw_r16_r16  
  setnz %ah                          #  5     0x12  3      OPC=setnz_rh         
  retq                               #  6     0x15  1      OPC=retq             
                                                                                
.size target, .-target
