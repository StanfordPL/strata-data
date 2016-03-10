  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .read_sf_into_rcx           #  1     0     5      OPC=callq_label    
  movzbl %cl, %ebx                  #  2     0x5   3      OPC=movzbl_r32_r8  
  callq .move_016_008_cx_r12b_r13b  #  3     0x8   5      OPC=callq_label    
  decw %cx                          #  4     0xd   3      OPC=decw_r16       
  callq .move_008_016_r12b_r13b_cx  #  5     0x10  5      OPC=callq_label    
  sarq %cl, %rbx                    #  6     0x15  3      OPC=sarq_r64_cl    
  setne %bl                         #  7     0x18  3      OPC=setne_r8       
  retq                              #  8     0x1b  1      OPC=retq           
                                                                             
.size target, .-target
