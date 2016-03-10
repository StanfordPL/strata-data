  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  movzbl %bl, %edx                #  1     0     3      OPC=movzbl_r32_r8  
  callq .move_016_008_dx_r8b_r9b  #  2     0x3   5      OPC=callq_label    
  callq .move_008_016_r8b_r9b_bx  #  3     0x8   5      OPC=callq_label    
  xorb %cl, %bh                   #  4     0xd   2      OPC=xorb_rh_r8     
  orb %bh, %bl                    #  5     0xf   2      OPC=orb_r8_rh      
  retq                            #  6     0x11  1      OPC=retq           
                                                                           
.size target, .-target
