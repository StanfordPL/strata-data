  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpxor %xmm1, %xmm1, %xmm15  #  1     0     4      OPC=vpxor_xmm_xmm_xmm   
  cvttss2sil %xmm15, %r13d    #  2     0x4   5      OPC=cvttss2sil_r32_xmm  
  xchgw %r13w, %cx            #  3     0x9   4      OPC=xchgw_r16_r16       
  cmovpl %r13d, %ebx          #  4     0xd   4      OPC=cmovpl_r32_r32      
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
