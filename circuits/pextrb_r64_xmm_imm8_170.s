  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  xorl %r8d, %r8d                     #  1     0     3      OPC=xorl_r32_r32   
  callq .move_byte_10_of_ymm1_to_r8b  #  2     0x3   5      OPC=callq_label    
  vmovd %r8d, %xmm2                   #  3     0x8   5      OPC=vmovd_xmm_r32  
  movd %xmm2, %ebx                    #  4     0xd   4      OPC=movd_r32_xmm   
  setc %cl                            #  5     0x11  3      OPC=setc_r8        
  subb %cl, %bh                       #  6     0x14  2      OPC=subb_rh_r8     
  retq                                #  7     0x16  1      OPC=retq           
                                                                               
.size target, .-target
