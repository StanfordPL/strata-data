  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode                  
.target:                            #        0    0      OPC=<label>             
  xorw %r8w, %r8w                   #  1     0    4      OPC=xorw_r16_r16        
  cvttss2sil %xmm1, %ebx            #  2     0x4  4      OPC=cvttss2sil_r32_xmm  
  callq .move_r8b_to_byte_7_of_rbx  #  3     0x8  5      OPC=callq_label         
  retq                              #  4     0xd  1      OPC=retq                
                                                                                 
.size target, .-target
