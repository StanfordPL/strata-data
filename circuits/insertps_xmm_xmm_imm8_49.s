  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  xorq %r13, %r13                  #  1     0     3      OPC=xorq_r64_r64             
  vpbroadcastq %xmm2, %xmm3        #  2     0x3   5      OPC=vpbroadcastq_xmm_xmm     
  vfmsub213ss %xmm1, %xmm2, %xmm3  #  3     0x8   5      OPC=vfmsub213ss_xmm_xmm_xmm  
  addw %r13w, %r13w                #  4     0xd   4      OPC=addw_r16_r16             
  vunpckhps %xmm3, %xmm1, %xmm15   #  5     0x11  4      OPC=vunpckhps_xmm_xmm_xmm    
  movlhps %xmm15, %xmm1            #  6     0x15  4      OPC=movlhps_xmm_xmm          
  xchgw %r13w, %r13w               #  7     0x19  4      OPC=xchgw_r16_r16            
  cvtsi2ssl %r13d, %xmm1           #  8     0x1d  5      OPC=cvtsi2ssl_xmm_r32        
  retq                             #  9     0x22  1      OPC=retq                     
                                                                                      
.size target, .-target
